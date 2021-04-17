let $x := avg(doc("bookDB.xml")/Bookstore/Book/@Price)
for $y in doc("bookDB.xml")/Bookstore/Book
where $y/@Price < $x
 return
<name>
  { $y/Title }
  { $y/data(@Price) }
  </name>
