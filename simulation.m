
function [obj]=simulation(param)

load('env')
T=30;
[genome]=chromosome(param)%assign your genome(combination of parameter)

 [S_loop, I_loop, R_loop,L_loop]=solve_loop(env, genome,30,1) ;
%n
for i=1:88
    for j=1:T
S_loop_sum{i}(j)=0;
I_loop_sum{i}(j)=0;
R_loop_sum{i}(j)=0;
L_loop_sum{i}(j)=0;
    end
end

cells=zeros(88,1);

for index=1:88
    for i=1:50
        for j=1:50
            if env(j,i).index==index
                cells(index)=cells(index)+1;
                for T=1:30
                S_loop_sum{index}(T)=S_loop_sum{index}(T)+S_loop{j,i}(T);
                L_loop_sum{index}(T)=L_loop_sum{index}(T)+L_loop{j,i}(T);
                I_loop_sum{index}(T)=I_loop_sum{index}(T)+I_loop{j,i}(T);
                R_loop_sum{index}(T)=R_loop_sum{index}(T)+R_loop{j,i}(T);
                end
            end
        end
    end
end

%calculate the error of the suggested parameters
fitness=fitness_function(T,S_loop_sum,I_loop_sum,R_loop_sum,L_loop_sum, Cases_Table);
obj=mean(fitness)

end