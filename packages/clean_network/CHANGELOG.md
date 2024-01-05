# 2.0.1
- export `GraphRequest` class

# 2.0.0
BREAKING CHANGES:
- removed `CleanNetwork` class 
- added 'CleanClient' class
- other improvements

# 1.0.9
- add base `AppError` class
- add base `ApiException` class
- updated BaseRepository to use `AppError` and `ApiException` classes
- updated typedefs
- updated examples

# 1.0.8+1
- fix broken example link

# 1.0.8
- add `badCertificate` exception 
- updated exception handling and error checking for graphql requests

# 1.0.7
- updated dio dependency
- fixed data cast error
- fixed PaginatedResponse.fromJson throwing error when trying to parse pagination

# 1.0.6+1
- make `PagePagination` and 'CursorPagination' classes public


# 1.0.6

- renamed `PageParams` class to `Pagination`
- updated `PaginatedResponse` class to use `Pagination` class
- added `Pagination.cursor` factory constructor for cursor based pagination
- added `Pagination.page` factory constructor for page based pagination

Sample Json response for pagination:

```json
{
  "data": [
    {
      "id": 1,
      "name": "John",
      "email": "john@doe.com"
    }
  ],
  "pagination|pageInfo": {
    "current_page|currentPage|page": 1,
    "per_pag|perPage": 15,
    "total|totalDocs|total_docs|count": 1
  }
}
```

or

```json
{
  "data": [
    {
      "id": 1,
      "name": "John",
      "email": "john@doe.com"
    }
  ],
  "pagination|pageInfo": {
    "startCursor|start_cursor": "RandomString",
    "hasNextPage|has_next_page": false,
    "endCursor|end_cursor": "RandomString"
  }
}
```

or

```json
{
  "data": [
    {
      "id": 1,
      "name": "John",
      "email": "john@doe.com"
    }
  ],
  "current_page|currentPage|page": 1,
  "per_page|perPage": 15,
  "total|total_docs|totalDocs|count": 1
}
```

    or

```json
{
  "data": [
    {
      "id": 1,
      "name": "John",
      "email": "john@doe.com"
    }
  ],
  "start_cursor|startCursor": "RandomString",
  "hasNextPage|has_next_page": false,
  "end_cursor|endCursor": "RandomString"
}
```

# 1.0.5

- added `PageParams` class
- added `fromJson` methods on `PaginatedResponse` classes
  Note: to use fromJson methods your API response must have the following structure:

```json
{
  "data": [
    {
      "id": 1,
      "name": "John",
      "email": "john@doe.com"
    }
  ],
  "pagination": {
    "current_page": 1,
    "last_page": 1,
    "per_page": 15,
    "total": 1
  }
}
```

or

```json
{
  "data": [
    {
      "id": 1,
      "name": "John",
      "email": "john@doe.com"
    }
  ],
  "pagination": {
    "currentPage": 1,
    "lastPage": 1,
    "perPage": 15,
    "total": 1
  }
}
```

# 1.0.4

- added `PaginatedResponse` class
- added `PaginatedCleanResponse`,'PaginatedEitherResponse' and 'EitherResponse' typedefs
- export fpdart package

# 1.0.3

- added examples

# 1.0.2

- export dio package

# 1.0.1

- update docs

# 1.0.0

- update docs

# 1.0.0+1

- initial release
