
using QuantEcon

function my_lin_interp(grid, vals)
    function func(x)
        x in grid[1]:grid[2]
        return vals[1] + (vals[2] - vals[1])*(x - grid[1])/(grid[2] - grid[1])
    end
    return func
end

grid = [1, 2]
vals = [2, 0]
f = my_lin_interp(grid, vals)
f(1.25)

grid = [1, 2, 3, 4, 5]
vals = [2, 0, 6, 4, 8]
x = 3.5
searchsortedlast(grid, x)

function my_lin_interp_n(grid, vals)
    function func_n(x)
        i = searchsortedlast(grid, x)
        x in grid[i]:grid[i+1]
        return vals[i] + (vals[i+1] - vals[i])*(x - grid[i])/(grid[i+1] - grid[i])
    end
    return func_n
end

grid = [1, 2, 3, 4, 5]
vals = [2, 0, 6, 4, 8]
f = my_lin_interp_n(grid, vals)
f(3.25)


