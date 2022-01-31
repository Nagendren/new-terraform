# Dynamo DB

> In this demo, we will create dynamodb, which can be used for locking s3 backend

#Note:
- The primary key to be used to lock the state in dynamoDB must be called **LockID** and must be a **“string”** type (S).
