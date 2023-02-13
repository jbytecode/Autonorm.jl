module Autonorm

using SQLite, DataFrames


export getdatabase 


function getdatabase()::SQLite.DB 
    return SQLite.DB()
end  

function getdatabase(s::AbstractString)::SQLite.DB 
    return SQLite.DB(s)
end 

end # module Autonorm
