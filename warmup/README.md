# Warmup: JSON
This project will teach you how to load data formatted as JSON, as well as the basic structure of the next projects.

## JSON Introduction
JSON is perhaps the most ubiqituous human-readable data format used to transfer information between servers today, but it's also often used to store data. It's much less powerfull than an actual database, but it's lightweight, flexible, and easy for humans to read directly as text. Sometimes, people even store snippits of JSON **inside** of a database.

### JSON format
JSON consists of **objects** which have **properties** and a **value** for each property. Values can be strings, numbers, booleans etc. The basic format of an object is curly brackets surrounding all of it's properties. Here is an example "book" object:

```
{
    "name": "Hamlet",
    "author": "William Shakespeare",
    "publish_year": 1603,
    "is_play": true

}
```

Notice that property names are surrounded by quotes, separated from their values with a colons, and separted from each other with commas. 

You can also use arrays of things (which use square brackets) and sub-objects as values, allowing you to create more structured and heirarchical data. For example, this object describes an entire (underfunded) library:

``` 
{
    "books": [
        {
            "name": "Hamlet",
            "author": "William Shakespeare",
            "publish_year": 1603,
            "is_play": true
        },
        {
            "name": "1984",
            "author": "George Orwell",
            "publish_year": 1949,
            "is_play": false
        }
    ]
    "address": "1234 Fake Street",
    "head_librarian": "Miss Ing Page"
}
```
