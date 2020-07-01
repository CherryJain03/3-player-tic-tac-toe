function [winner] = whowins (plr, box)
    winner=0;
  % logic for winner
    % upper left 3x3 box
    if box(1,1)==plr && box(1,2)==plr && box(1,3)==plr
        winner=box(1,1);
        return;
    elseif box(2,1)==plr && box(2,2)==plr && box(2,3)==plr
        winner=box(2,1);
        return;
    elseif box(3,1)==plr && box(3,2)==plr && box(3,3)==plr
        winner=box(3,1);
        return;
    elseif box(1,1)==plr && box(2,1)==plr && box(3,1)==plr
        winner=box(1,1);
        return;
    elseif box(1,2)==plr && box(2,2)==plr && box(3,2)==plr
        winner=box(1,2);
        return;
    elseif box(1,3)==plr && box(2,3)==plr && box(3,3)==plr
        winner=box(1,3);
        return;
    % connecting first 3x3 with fourth row and column
    elseif box(1,4)==plr && box(1,2)==plr && box(1,3)==plr
        winner=box(1,4);
        return;
    elseif box(2,4)==plr && box(2,2)==plr && box(2,3)==plr
        winner=box(2,4);
        return;
    elseif box(3,4)==plr && box(3,2)==plr && box(3,3)==plr
        winner=box(3,4);
        return;
    elseif box(4,1)==plr && box(2,1)==plr && box(3,1)==plr
        winner=box(4,1);
         return;
    elseif box(4,2)==plr && box(2,2)==plr && box(3,2)==plr
        winner=box(4,2);
        return;
    elseif box(4,3)==plr && box(2,3)==plr && box(3,3)==plr
        winner=box(4,3);
        return;
    elseif box(4,1)==plr && box(4,2)==plr && box(4,3)==plr
        winner=box(4,1);
        return;
    elseif box(1,4)==plr && box(2,4)==plr && box(3,4)==plr
        winner=box(1,4);
        return;
    % now diagonals
    elseif box(1,1)==plr && box(2,2)==plr && box(3,3)==plr
        winner=box(1,1);
        return;
    elseif box(4,4)==plr && box(2,2)==plr && box(3,3)==plr
        winner=box(4,4);
        return;
    elseif box(1,4)==plr && box(2,3)==plr && box(3,2)==plr
        winner=box(1,4);
        return;
    elseif box(2,3)==plr && box(3,2)==plr && box(4,1)==plr
        winner=box(1,3);
        return;
    elseif box(2,1)==plr && box(3,2)==plr && box(4,3)==plr
        winner=box(2,1);
        return;
    elseif box(1,2)==plr && box(2,3)==plr && box(3,4)==plr
        winner=box(1,2);
        return;
    elseif box(2,4)==plr && box(3,3)==plr && box(4,2)==plr
        winner=box(3,3);
        return;
    elseif box(1,3)==plr && box(2,2)==plr && box(3,1)==plr
        winner=box(1,3);
        return;
            % logic for a draw that is winner=3
    % all boxes should be full
    elseif box(1)~=0 && box(2)~=0 && box(3)~=0 && box(4)~=0 && box(5)~=0 && box(6)~=0 && box(7)~=0 && box(8)~=0 && box(9)~=0 && box(10)~=0 && box(11)~=0 && box(12)~=0 && box(13)~=0 && box(14)~=0 && box(15)~=0 && box(16)~=0
        winner=-1;
    end
end
