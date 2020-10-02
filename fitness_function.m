function [fitness]=fitness_function(T,S_loop_sum,I_loop_sum,R_loop_sum,L_loop_sum, Cases_Table)
Serr=0;
Ierr=0;
Rerr=0;
Lerr=0;


for i=1:88
    if S_loop_sum{i}(1)~=0
       
         Serr=Serr+ immse(Cases_Table{i}(16:T+15,5),(S_loop_sum{i}(1:T)+L_loop_sum{i}(1:T))');
          Ierr=Ierr+ immse(Cases_Table{i}(16:T+15,1),I_loop_sum{i}(1:T)');
          Rerr=Rerr+ immse(Cases_Table{i}(16:T+15,4),R_loop_sum{i}(1:T)');
       
    end
end

                
fitness=[Serr Ierr Rerr];
end