# Описание API методов
=begin
@api {get} /users Request all Users
@apiName GetAllUsers
@apiGroup Users

@apiParam {String} name Users name.

@apiSuccess {Number} id Users id.
@apiSuccess {String} username Users username.
@apiSuccess {String} email Users email.

@apiSuccessExample Success-Response:
HTTP/1.1 200 OK
[
{
"id": 1,
"username": "user1",
"email": "user1@example.com"
},
{
"id": 2,
"username": "user2",
"email": "user2@example.com"
}
]

@apiErrorExample Error-Response:
HTTP/1.1 422 Unprocessable Entity
[
"Name can't be blank",
"Email is invalid"
]
=end
