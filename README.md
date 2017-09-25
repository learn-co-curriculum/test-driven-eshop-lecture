# Models 


User 
====
username : string : required : unique 
password : string : required
has_many :reviews


Product 
=======
name : string : required 
description : text : required 


Review
======
content : text : required 
rating : integer : required : 0 - 5 
user_id : integer : foreign_key : required
product_id : integer : foreign_key : required

