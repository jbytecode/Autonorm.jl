@testset "getdatabase()" begin 
    @testset "memory database" begin 
        db = Autonorm.getdatabase()
        @test isa(db, SQLite.DB)
        close(db) 
    end 

    @testset "file database" begin 
        tmpfile = tempname()
        db = Autonorm.getdatabase(tmpfile)
        @test isa(db, SQLite.DB)

        SQLite.execute(db, "CREATE TABLE TestTable (a INTEGER, b TEXT)")
        SQLite.execute(db, "INSERT INTO TestTable (a, b) VALUES (1, 'AutoNorm')")
        
        resultrows = SQLite.DBInterface.execute(db, "SELECT * FROM TestTable")
        for row in resultrows 
            @test row[:a] == 1
            @test row[:b] == "AutoNorm"
        end
        
        close(db)
        rm(tmpfile)
    end 
end