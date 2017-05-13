module MyInterpolations
function my_lin_interp(grid, vals)
    function func(x)
        i = searchsortedlast(grid, x)
        x in grid[i]:grid[i+1]
        return vals[i] + (vals[i+1] - vals[i])*(x - grid[i])/(grid[i+1] - grid[i])
    end
    return func
end
end
