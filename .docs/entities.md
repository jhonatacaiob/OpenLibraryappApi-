## User
    - id                UUID
    - first_name        VARCHAR
    - last_name         VARCHAR
    - birthdate         DATE
    - password          VARCHAR
    - is_admin          BIT
    - is_librarian      BIT
    - created_at        TIMESTAMP
    - updated_at        TIMESTAMP

## Author
    - id                UUID
    - first_name        VARCHAR
    - last_name         VARCHAR
    - birthdate         DATE
    - biography         TEXT
    - created_at        TIMESTAMP
    - updated_at        TIMESTAMP

## Book
    - id                UUID
    - title             VARCHAR 
    - isbn              VARCHAR
    - cover             VARCHAR
    - quantity          INTEGER
    - publish_date      DATE
    - created_at        TIMESTAMP
    - updated_at        TIMESTAMP
    - author_id         FOREIGN KEY REFERENCES Author

## Reservation
    - id                UUID
    - book_id           FOREIGN KEY REFERENCES Book
    - user_id           FOREIGN KEY REFERENCES User
    - pickup_date       DATETIME
    - created_at        TIMESTAMP
    - updated_at        TIMESTAMP

## Borrowed
    - id                UUID
    - additional_note   TEXT
    - book_id           FOREIGN KEY REFERENCES Book
    - user_id           FOREIGN KEY REFERENCES User
    - librarian_id      FOREIGN KEY REFERENCES User
    - devolution_date   DATETIME
    - created_at        TIMESTAMP
    - updated_at        TIMESTAMP

