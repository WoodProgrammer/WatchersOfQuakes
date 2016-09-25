import sklearn.datasets as caller
from sklearn.neighbors import KNeighborsClassifier

data_1=caller.load_iris()
A=data_1.data
A_target=data_1.target
print A
print A_target

knn=KNeighborsClassifier(n_neighbors=149)
print(knn)
knn.fit(A,A_target)
predict_1=knn.predict([[3,2,0.9,0]])
print predict_1

if predict_1==[0]:
    print "Setosa"
elif predict_1==[1]:
    print "Versicolor"
elif predict_1==[2]:
    print "Virginica"
