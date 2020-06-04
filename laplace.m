
GRID_SIZE = 50;
ITERATIONS = 300;
INITIAL = 0;
TOP = 50;
BOTTOM = 10;
LEFT = 40;
RIGHT = 10;

field = zeros(GRID_SIZE, GRID_SIZE) + INITIAL;
for i=1: GRID_SIZE
    field(1, i) = TOP;
    field(GRID_SIZE, i) = BOTTOM;
    field(i, 1) = LEFT;
    field(i, GRID_SIZE) = RIGHT;
end

for i=1: ITERATIONS
    for j=2: GRID_SIZE-1
        for k=2: GRID_SIZE-1
            field(j,k) = 1./4.*(field(j-1, k) + field(j+1, k) + field(j, k-1) + field(j, k+1));
        end
    end
    image(field);
    colorbar;
    title(sprintf('Laplace equation after %d iterations', i));
    pause(0.001);
end



