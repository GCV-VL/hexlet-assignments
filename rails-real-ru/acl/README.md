# ACL

## Ссылки

* [Access Control List](https://ru.wikipedia.org/wiki/ACL) (Википедия)
* [pundit](https://github.com/varvet/pundit)

## Задачи

### Gemfile

Подключите гем pundit.

```ruby
gem 'pundit'
```

### app/policies/post_policy.rb

Реализуйте политику для управления постами PostPolicy. Создавать посты может только залогиненный пользователь, редактировать автор и админ, а удалять - админ. Смотреть могут все.

### app/controllers/posts_controller.rb

Реализуйте CRUD для управления постами. Используйте политику для авторизации действий пользователя.

### app/views/posts/index.html.slim

Добавьте на страницу ссылки для управления постами. Они должны отображаться для тех пользователей, у которых есть соответствующие права. Используйте созданную политику для проверки условия.

## Подсказки

* Для сидирования базы используйте команду `bin/rails db:seed`. Команда создаст пользователей и посты. Используйте консоль, чтобы найти необходимо пользователя для логина