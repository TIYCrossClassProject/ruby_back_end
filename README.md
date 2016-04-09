# sasskwatch API

api for an image guessing game based on technology applications and tools

## Routes

#### POST/login

*user sign-up*

Body Parameters:
  - alias: string
  - first: string
  - last: string
  - email: string
  - password: string

## Status:
### 201 OK
### 422 Unprocessable Entity

**Request**

```
{
  "alias": "taquinas",
  "first": "thomas",
  "last": "aquinas",
  "email": "taquinas@domain.com",
  "password": "philospher"
}
```

**Response**

```
{
  "user": {
    "alias": "taquinas",
    "first": "thomas",
    "last": "aquinas",
    "email": "taquinas@domain.com",
    "auth_token": "39dceac031e3b716f4f81b8550d88b17"
  }
}
```

#### POST/authorize

*user credentials created upon sign-up*   

Header Parameters:
key: 'Auth-token'
value: '39dceac031e3b716f4f81b8550d88b17'

## Status:
### 200 OK
### 401 unauthorized

**Response**

```
{
  "message": "Successfully logged in as taquinas@domain.com."
}
```

#### POST/login

*fields required for logging in*

Body Parameters:
  - Email: string
  - Password: string

## Status:
### 200 OK
### 401 unauthorized

**Request**

```
{
  "email": "taquinas@domain.com"
  "password": "philospher"
}
```

**Response**

```
{
  "user": {
    "email": "taquinas@domain.com",
    "auth_token": "39dceac031e3b716f4f81b8550d88b17"
  }
}
```

#### POST/upload_image

*upload image by an  authenticated user*

Body Parameters:
  - file: string  
  - id: integer

## Status:
### 201 OK
### 422 Unprocessable Entity

**Request**

```
{
  "file": "italy.jpg",
  "id": 24
}
```

**Response**

```
{
  "user": {
    "email": "taquinas@domain.com",
    "first": "thomas",
    "last": "aquinas"
  },
  "logo": "http://s3-us-west-2.amazonaws.com/sasskwatch/images/logos/000/000/007/original/italy.jpg?1460217222"
}
```
