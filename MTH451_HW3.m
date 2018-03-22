close all
%% Part (a)
A = zeros(400, 400);
for i = 1 : 400
    for j = 1 : 400
        r = ((i - 200)^2 + (j - 200)^2)^(1/2);
        if (50 <= r) & (r <= 200)
            A(i,j) = r/200;
        else
            A(i,j) = 0;
        end
    end
end
imagesc(A);
cmap = colormap(gray(100)); 
colormap(1 - cmap);
axis('square')

%% Part (b)
[U S V] = svd(A);
for k = [5 10 40 120 150]
    Ak = zeros(400, 400);
    for l = 1:k
        Ak = Ak + U(:,l)*S(l,l)*V(:,l)';
    end
    figure,imagesc(Ak),axis('square')
    cmap = colormap(gray(100)); 
    title([num2str(k), 'modes'])
end
sigma = diag(S);
sigma(1:20); % obtian first 20 singular values

%% Part(c)
semilogy(sigma,'o');