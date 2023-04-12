create procedure dbo.stp_deassociate_book_from_authors
@bookId int,
@authorsIds nvarchar(100)
as
with cte as
(
    select 
        trim([value]) as author_id,
        @bookId as book_id    
    from
        string_split(@authorsIds, ',')
)
delete 
    ba
from
    dbo.books_authors ba
inner join
    cte c on ba.author_id = c.author_id and ba.book_id = c.book_id

select book_id, author_id from dbo.books_authors where book_id = @bookId
go