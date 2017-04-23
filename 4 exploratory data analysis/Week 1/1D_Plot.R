x=rnorm(100)
y=rnorm(100)
z=rnorm(100)
df=data.frame(cbind(x,y,z))+1
boxplot(df$y,col="blue")
hist(df$y,col="green")
rug(df$y)
hist(df$y,col="green",breaks = 20)
rug(df$y)
boxplot(df$y,col="blue")
abline(h=2)
abline(v=median(df$y),col="magenta",lwd=4)
hist(df$y,col = "green",breaks = 25)
abline(v=median(df$y),col="red",lwd=4)
z=factor(c("east","west"))
z[1:50]="east"
z[51:100]="west"
z[57:70]="east"
barplot(table(z),col = "red",main="how many east/west")
x=rnorm(100)
y=rnorm(100)
z=rnorm(100)
df=data.frame(cbind(x,y,z))+1
boxplot(df$y,col="blue")
hist(df$y,col="green")
rug(df$y)
hist(df$y,col="green",breaks = 20)
rug(df$y)
boxplot(df$y,col="blue")
abline(h=2)
abline(v=median(df$y),col="magenta",lwd=4)
hist(df$y,col = "green",breaks = 25)
abline(v=median(df$y),col="red",lwd=4)
z=factor(c("east","west"))
z[1:50]="east"
z[51:100]="west"
z[57:70]="east"
barplot(table(z),col = "red",main="how many east/west")
