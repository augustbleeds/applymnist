clear, clc

images = loadMNISTImages('train-images-idx3-ubyte');
labels = loadMNISTLabels('train-labels-idx1-ubyte');

% We are using display_network from the autoencoder code
display_network(images(:,1:100)); % Show the first 100 images
disp(labels(1:10));

zero_i = [];
three_i = [];
five_i = [];
eight_i = [];
nine_i = [];

for i=1:60000
    switch(labels(i))
        case 0
            zero_i(end+1) = i;
        case 3
            three_i(end+1) = i;
        case 5
            five_i(end+1) = i;
        case 8
            eight_i(end+1) = i;
        case 9
            nine_i(end+1) = i;
        otherwise
            ;
    end
end

G = erdosRenyi(10,0.5,1);
G = full(G.Adj);


