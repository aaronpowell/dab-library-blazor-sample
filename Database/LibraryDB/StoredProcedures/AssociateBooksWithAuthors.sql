create procedure dbo.stp_associate_book_with_authors
@bookId nvarchar(100),
@authorsIds nvarchar(100)
as
insert into 
    dbo.books_authors (author_id, book_id)
select 
    trim([value]) as author_id,
    @bookId as book_id    
from
    string_split(@authorsIds, ',')

select book_id, author_id from dbo.books_authors where book_id = @bookId
go

