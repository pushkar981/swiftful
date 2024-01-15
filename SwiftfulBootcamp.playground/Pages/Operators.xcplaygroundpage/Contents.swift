import Foundation

var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 100

likeCount += 1
likeCount -= 1
likeCount *= 2
likeCount /= 2

// Order of operations does matter!
// PEMDAS - Paranthesis, Exponents, Multi, Division, Addition, Subtraction
likeCount = likeCount - 1 * 1.5         // 5 - 1.5 = 3.5
likeCount = (likeCount - 1) * 1.5       // 3.5 - 1 = 2.5 * 1.5 = 3.75

if likeCount == 5 {
    print("Post has 5 likes")
}

if likeCount != 5 {
    print("Post does not have 5 likes")
}

if likeCount > 5 || commentCount == 0 {
    print("Post has more than 5 likes OR has no comments")
}

if likeCount < 5 && commentCount >= 0 {
    print("Post has less than 5 likes BUT at least 1 comment")
}

