%=============================================%
%--------------3-Player TicTacToe-------------%
%---------------------------------------------%
%---------------BY: P/O SULEMAN---------------%
%=============================================%
function tictactoe_3player
    %-----initializing-----
    clc;
    clear all;
    close all;
    draw=-1;
    wronginput=0;
    matchend=0;     %   matchend is off
    plr=1;
    box=[0 0 0 0;0 0 0 0;0 0 0 0;0 0 0 0 ];
    while matchend==0       % run till matchend is not on
        clc;
        disp('|---------------------|');
        disp('| 1  |  5 |  9  |  13 |');
        disp('|---------------------|');
        disp('| 2  |  6 |  10 |  14 |');
        disp('|---------------------|');
        disp('| 3  |  7 |  11 |  15 |');
        disp('|---------------------|');
        disp('| 4  |  8 |  12 |  16 |');
        disp('|---------------------|');
        disp(box);
        if wronginput==1
            disp('Wrong Input');
            wronginput=0;
        end
        b=playerturn(plr);
        if box(b)==0
            box(b)=plr;
        else
            wronginput=1;
            continue;
        end
        %   checking if somebody Won or a Draw or not yet, 1or2 , 3 or 0
            %   respectively
        winner=whowins(plr,box);
        if winner~=0
            matchend=1;
        end
        %       changing player after each turn
        if plr==1
            plr=2;
        elseif plr==2;
            plr=3;
        else
            plr=1;
        end
        clc;
    end
    if winner==1 || winner==2 || winner==3
        fprintf('Player %d wins\n',winner);
    elseif winner==draw
        fprintf('Its a draw\n');
    end    
    disp(box);
end
