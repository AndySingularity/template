class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:username] # => подключаемые модули devise.

	has_many :post #    =>  Связь таблиц: Один пользователь может иметь множество записей
	has_many :comment # =>  Связь таблиц: Один пользователь может оставить множество комментариев.

	before_save { email.downcase! } # => перед сохранением перевести email в нижний регистр
	VALID_USERNAME= /\A[a-zA-Zа-яА-Я\d\.\_]+\z/
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i 

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png" 
	# => Прявязка к каждому пользователю изображения (аватарки) Размеры задаются в параметрах :styles, :default_url отвечает за дефолтное изображение
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/ # => Валидация получаемого файла

	validates :username, presence: true, length: {maximum: 25}, format: {with: VALID_USERNAME,
		message: "Нудопустимые символы"}
	validates :email, presence: true, length: {maximum: 45}, format: {with:VALID_EMAIL_REGEX},
    uniqueness: { case_sensitive: false }

end
