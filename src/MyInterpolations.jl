module MyInterpolations
function my_lin_interp(grid, vals)
    function func(x)
        if x < grid[1]
            print("error")
        end
        if x > grid[end]
            print("error")
        end
        if grid[1] <= x < grid[end]
        i = searchsortedlast(grid, x)
        x in grid[i]:grid[i+1]
        return vals[i] + (vals[i+1] - vals[i])*(x - grid[i])/(grid[i+1] - grid[i])
        end
        if x == grid[end]
        return vals[end]
        end
    end
    return func
end
    export my_lin_interp
end
