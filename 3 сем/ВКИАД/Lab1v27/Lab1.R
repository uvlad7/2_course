dat <- read.table(file="in.txt", dec=".", sep=",")
dat
d <- t(dat)[,1]
d
a <- table(t(dat))
a
f <- as.data.frame(a)
f
f[,3] <- 100*a/(sum(a))
f[,4] <- cumsum(a)
f[,5] <- cumsum(f[3])
colnames(f) <- c("��������", "�������", "��������", "����������� ��������",
                 "����������� ��������")

plot(a, type="l", main="������� ������", xlab="��������", ylab="�������")

v <- sort(d)
x <- unique(v)
y <- as.numeric(f[,4])
plot(x, y, type="l", xlab="��������", ylab="����������� �������",
     main="�������� ���������� ������")
plot(x, as.numeric(f[,5]), type="l", xlab="��������", ylab="����������� ��������",
     main="�������� ������������� ������")
