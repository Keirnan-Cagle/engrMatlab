clc
clear

%Ask the user how many times they want to play
input_playTime = input('How many times would you like to play? ');
count = 0;
while(input_playTime > 0)
    
    %Sets up a 1 x 2 matrix with values from 1 to 6
    rolls = randi(6,1,2);

    %Asks for the users guess
    input_guess = input('Will the result be over(1), under(2), or equal(3) to seven? ');

    %If the sum is greater than 7
    if(sum(rolls) > 7)
        result = 1;
    %If the sum is less than 7
    elseif(sum(rolls) < 7)
        result = 2;
    else
        result = 3;
    end

    %Print the value rolled
    fprintf('The roll is %d! \n', sum(rolls))
    %If the guess is the same as the result
    if(input_guess == result)
        fprintf('You won! \n')
        count = count + 1;
    else
        fprintf('You lost! \n')
    end
input_playTime = input_playTime - 1;
end
fprintf('You won %d times\n', count)
   