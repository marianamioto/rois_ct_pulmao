function [xs ys] = encontrapontos(pix,piy,pfy,phx,phy)
    k = 1;
    [hipx,hipy] = bresenham(pix,piy,phx,phy);
    
    for pos = 1:length(hipx)
        i = hipx(pos);
        for j = hipy(pos):pfy
            xs(k) = i;
            ys(k) = j;
            k = k + 1;
        end
    end
    
end