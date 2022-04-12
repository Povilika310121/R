medal18<-c(1,2,0,1,1,0,2,2)
medal14<-c(3,1,1,0,2,1,0,0)
medal10<-c(0,1,1,1,0,0,1,0)
medal06<-c(3,0,1,0,1,0,0,1)
medal02<-c(2,3,0,1,1,2,0,0)
medal98<-c(3,2,0,1,3,0,2,0)

Sum_medal<-c(sum(medal98),sum(medal02),sum(medal06),sum(medal10),sum(medal14),sum(medal18))
all_years = c('1998', '2002', '2006', '2010', '2014', '2018')
names(Sum_medal)<-all_years
par(mar=c(5,5,5,5)) #par устанавливает или настраивает параметры построения графика mar – числовой вектор длины 4, который задает размеры полей в следующем порядке: снизу, слева, сверху и справа
barplot(Sum_medal,ylab = 'Кол-во медалей',xlab = 'Год', ylim = c(0,12), border = 'black',col = 'red', main = 'Кол-во мест (1-8) сборной России')

gold_medal <- c(3,2,3,0,3,1)
names(gold_medal)<-all_years
#круговая диаграмма, ото
pie(gold_medal, radius = 1, main = "Кол-во золотых медалей России по годам")

years = c('2006', '2010', '2014', '2018')
Germany_1<-c(11, 10, 8, 14)
USA_1<-c(9, 9, 9, 9)
Austria_1<-c(9, 4, 4, 5)
Russia_1<-c(8, 3, 13, 2)
Canada_1<-c(7, 14, 10, 11)
Sweden_1<-c(7, 5, 7, 7)
SouthKor_1<-c(6, 6, 3, 5)

plot(years, Germany_1, type='b', 
     ylim = c(0, 15),
     ylab = 'Кол-во',
     xlab = 'Года',
     main = 'Кол-во золотых меделай по странам',
     col.main = 'black',
     col.lab = 'black')


lines(years, USA_1, type='b', col = 'purple')
lines(years,Austria_1, type='b', col = 'orange')
lines(years,Russia_1, type='b', col = 'red')
lines(years,Canada_1, type='b', col = 'blue')
lines(years,Sweden_1, type='b', col = 'yellow')
lines(years,SouthKor_1, type='b', col = 'green')

lbl = c('Германия','США', 'Австралия', 'Россия', 'Канада',  'Швеция', 'Южная Корея')
color = c("black","purple", 'orange', 'red', 'blue', 'yellow', 'green')

legend("bottomleft",
       title = 'Страны',
       lbl,lty=c(1,1,1,1,1,1,1),
       fill = color,
       bg ="white")


Germany_3<-c(6, 7, 5, 7)
USA_3<-c(7, 13, 12, 6)
Austria_3<-c(7, 6, 5, 6)
Russia_3<-c(8, 7, 9, 9)
Canada_3<-c(7, 5, 5, 10)
Sweden_3<-c(5, 4, 6, 1)
SouthKor_3<-c(2, 2, 2, 4)

plot(years, Germany_3, type='b', ylim = c(0, 15),
     col = 'black',
     ylab = 'Кол-во',
     xlab = 'Года',
     main = 'График изменения количества бронзовых медалей по странам',
     col.main = 'black',
     col.lab = 'black')

lines(years, USA_3, type='b', col = 'purple')
lines(years,Austria_3, type='b', col = 'orange')
lines(years,Russia_3, type='b', col = 'red')
lines(years,Canada_3, type='b', col = 'blue')
lines(years,Sweden_3, type='b', col = 'yellow')
lines(years,SouthKor_3, type='b', col = 'green')


legend("bottomleft",
       title = 'Страны',
       lbl,lty=c(1,1,1,1,1,1,1),
       fill = color,
       bg ="white")


#Кол-во мест (1-8) среди мужчин по годам в России
man18<-c(0,0,0,0,0,0,1,1)
man14<-c(0,0,0,0,0,0,0,0)
man10<-c(0,1,0,0,0,0,0,0)
man06<-c(1,0,0,0,0,0,0,0)
man02<-c(1,1,0,0,1,0,0,0)
man98<-c(1,0,0,0,1,0,0,0)

#Кол-во мест (1-8) среди женщин по годам в России
woman18<-c(1,1,0,0,0,0,0,1)
woman14<-c(1,0,0,0,1,0,0,0)
woman10<-c(0,0,0,0,0,0,0,0)
woman06<-c(0,0,1,0,0,0,0,0)
woman02<-c(0,1,0,0,0,1,0,0)
woman98<-c(0,0,0,1,1,0,1,0)


Men_all<-c(sum(man98),sum(man02),sum(man06),sum(man10),sum(man14),sum(man18))
Woman_all<-c(sum(woman98),sum(woman02),sum(woman06),sum(woman10),sum(woman14),sum(woman18))


plot(all_years,
     xaxt='n',
     Men_all, 
     type='b', 
     ylim = c(0, 5),
     col = 'black',
     ylab = 'Кол-во',
     xlab = 'Года',
     main = 'Кол-во медалей мужчин и женщин сборной России',
     col.main = 'black',
     col.lab = 'black')
axis(1, at=all_years, labels=all_years)

lines(all_years, Woman_all, type='b',col = 'red3')


lbl = c('Мужчины','Женщины')
color = c("black","red3")

legend("bottomleft",
       lbl,lty=c(1,1,1,1,1,1,1),
       fill = color,
       bg ="white")

names(Men_all)<-all_years
barplot(Men_all,ylab = 'Кол-во',xlab = 'Год',main = 'Кол-во мест (1-8) по годам в России среди мужчин',border = 'black',col = 'black')

names(Woman_all)<-all_years
barplot(Woman_all,ylab = 'Кол-во',xlab = 'Год',main = 'Кол-во мест (1-8) по годам в России среди женщин', border = 'red3',col = 'red3')




