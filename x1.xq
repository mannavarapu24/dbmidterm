for $book in doc("bookDB.xml")/Bookstore/Book
where $book/@Price < 90 and $book/Authors/Author/Last_Name ="Ullman"
return $book/Title