# Requirements

We will build a custom blog application, named myblog.

There are 3 types of users, listed below, and a list of what each user is able to do.

Admin users can:

1. List public posts
1. Login
1. Logout
1. Update their profile
1. List, **C**reate, **R**etrieve, **U**pdate, and **D**elete, also known as **CRUD**
  - users
  - posts
  - comments
1. Create a comment on any post

Non-admin users can:

1. List/Retrieve public posts
1. Login
1. Update their profile
1. Logout
1. List, **C**reate, **R**etrieve, **U**pdate, and **D**elete, also known as **CRUD**
  - posts (their own)
  - comments (on their posts)
1. Create a comment on any post

Visitors or Users can:

1. List/Retrieve public posts
1. Create a comment on any post

Generally:
1. Posts should support [Markdown](https://www.markdownguide.org/basic-syntax/) formatting, the formatting used in this file.