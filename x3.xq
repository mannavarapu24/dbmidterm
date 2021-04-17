for $name in doc("bookDB") /Bookstore/Book
where every $firstname in $name/Authors/Author/First_Name
satisfies contains($firstname, "J")
return $name/Title

