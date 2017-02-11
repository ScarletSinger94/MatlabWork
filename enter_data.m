function enter_data (varargin)
x=1;
entry

    function entry
  
        disp('Welcome to your address book');
        fprintf('You are adding to entry number %d \n', x );
        name{x}=input('What is the First name? ','s');
        name2{x}=input('And the Last name? ','s');
        adress{x}=input('What is the Adress? ','s');
        city{x}=input('And your City? ','s');
        state{x}=input('Gimme that state ','s');
        zip{x}=input('And how about your Zip Code? ','s');
        fprintf('You have entered %s, %s, %s, %s, %s, %s for entry Number %d. \n', char(name{x}),char(name2{x}),char(adress{x}),char(city{x}),char(state{x}),char(zip{x}),x);
        edit=input('Edit? Hit y. Next entry hit n. If your finished, type f.\n ','s');
        if  strcmp(edit,'y')==1
            disp('We are going to send you back through the book. ');
            entry
        elseif strcmp(edit,'n')==1
            disp('Next entry')
            save Abook.mat name name2 adress city state zip
            x=x+1;
            entry
        elseif strcmp(edit,'f')==1'
            save Abook.mat name name2 adress city state zip
        end
        
    end
end


fprintf(fid, [ name ' ' name2 '\n']);
fprintf(fid, '%f %f \n', [A B]');
fclose(fid);

