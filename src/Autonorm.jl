module Autonorm

using SQLite, DataFrames


export getdatabase 


"""
    getdatabase()

# Arguments

No arguments

# Description
Connects to a on-memory-database file and returns a SQLite.DB object.

# Output


# Examples
```julia-repl
julia> db = getdatabase("test.db")
```
# References

"""
function getdatabase()::SQLite.DB 
    return SQLite.DB()
end  


"""
    getdatabase(s)

# Arguments
- `s::AbstractString`: Path to database file.

# Description
Connects to a database file and returns a SQLite.DB object.

# Output


# Examples
```julia-repl
julia> db = getdatabase("test.db")
```
# References

"""
function getdatabase(s::AbstractString)::SQLite.DB 
    return SQLite.DB(s)
end 

end # module Autonorm
