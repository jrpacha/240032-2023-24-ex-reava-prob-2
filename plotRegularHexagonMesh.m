clearvars
close all

fileName = 'mesh-hexagon-regular.png';

sqrt32=sqrt(3)/2;

nodes = [
    0,0;
    1,0;
    1/2,sqrt32;
    -1/2,sqrt32;
    -1,0;
    -1/2,-sqrt32;
    1/2,-sqrt32;
    ];

elem = [
    2, 3, 1;
    4, 1, 3;
    1, 4, 5;
    5, 6, 1;
    7, 1, 6;
    1, 7, 2
    ];

numNodes = size(nodes,1);
numElem = size(elem,1);

figure()


hold on
T = triangulation(elem,nodes);
triplot(T,lineWidth=2,color='black')
axis equal
axis([-1.25,1.25,-1.0,1.0])
yticks([-0.75,-0.5,-0.25,0,0.25,0.5,0.75])
grid on
box on

plot(nodes(:,1),nodes(:,2),'o', MarkerSize = 20,...
    MarkerFaceColor = 'white',MarkerEdgeColor='black',LineWidth=2)

for i = 1:numNodes
    text(nodes(i,1),nodes(i,2),num2str(i),...
       Interpreter='latex',FontSize=15,HorizontalAlignment='center',...
        FontWeight='bold')
end

for i = 1:numElem
    barycenter = 1/3*sum(nodes(elem(i,:),:));
text(barycenter(1,1),barycenter(1,2),['$$\Omega^{',num2str(i),'}$$'],...
    HorizontalAlignment='center',interpreter='LaTeX',FontSize=20)
end

text(0.1,0.05,'$1$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')

text(0,0.1,'$1$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')

text(-0.1,0.05,'$1$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')

text(-0.1,-0.05,'$1$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')

text(0,-0.11,'$1$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')

text(0.1,-0.05,'$1$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')

text(0.9,0.05,'$2$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')

text(0.39,0.8,'$2$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')

text(-0.5,0.75,'$2$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')

text(-0.91,-0.06,'$2$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')

text(-0.39,-0.8,'$2$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')

text(0.5,-0.75,'$2$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')


text(0.5,0.75,'$3$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')

text(-0.39,0.8,'$3$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')

text(-0.9,0.05,'$3$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')

text(-0.5,-0.75,'$3$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')

text(0.39,-0.8,'$3$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')

text(0.91,-0.06,'$3$',HorizontalAlignment='center',...
    interpreter='LaTeX',FontSize=10,color='red')







xlabel('$$x$$','FontSize',18,Interpreter='latex')
ylabel('$$y$$','FontSize',18,Interpreter='latex',Rotation=360)

hold off

saveas(gcf,fileName,'png')




