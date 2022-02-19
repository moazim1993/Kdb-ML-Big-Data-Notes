.quantQ.myspace.myfunc:{[prices;newPrices]
    //prices -- verctor of prices
    if[type[prices] <> type[newPrices]; '"Prices are incompatable"];
    : prices,newPrices
    }

.quantQ.debug.meta:{[func]
    // func -- function to inspect
    : `args`locals`globals`constants`name`path!{x[1 2 3],enlist[4_ -5_x],2#-4#x}value[func]
    }

.quantQ.debug.trap:{[func;args]
    // func -- function to inspect
    // args -- arguments for that function
    : .Q.trp[{value enlist[x],y}[func];args;{(x;.Q.sbt y)}]
    }