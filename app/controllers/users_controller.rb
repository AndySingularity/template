class UsersController < ApplicationController
	
	def index
		@users = User.all.reverse
	end

	def edit # => Вывод формы для обновления
		@user = current_user
	end

	def show
		@user = User.find(params[:id])
	end

	def update # => Обработка данных и редирект
		@user = User.find_by(id: current_user.id).update(inner)
		redirect_to root_path
	end

private # Ниже идут приватные методы, которые доступны только в данном Классе (контроллёре)


	def inner # => Приватный метод для обработки входящих данных из форм на сайте
		params.require(:user).permit(:title, :about, :bio, :avatar)
	end


end
