# 1.create queue
queue <- c("James", "Mary", "Steve", "Alex", "Patricia")
queue
# 2.add Harold to queue
newpatron <- c("Harold")
queue2 <- c(queue,newpatron)
queue2
# 3.remove James from queue
queue2 <- queue2[-1]
queue2
# 4.move Pat in front of Steve
queue2[c(1,2,3,4,5)] <- queue2[c(1,4,2,3,5)]
queue2
# 5.remove Harold from queue
queue2 <- queue2[-5]
queue2
# 6.remove Alex from queue without knowing his placement
queue2 <- queue2[-which(queue=="Alex")]
queue2
# 7.find Patricia's position in the queue
which(queue2=="Patricia")
# 8.count people in queue
length(queue2)
