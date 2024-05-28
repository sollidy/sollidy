// Binary search, work only with sorted list

function binarySearch(nums, target) {
  let left = 0
  let right = nums.length - 1

  while (left <= right) {
    let mid = Math.floor((right + left) / 2)
    console.log(mid)
    console.log(left, right)
    if (target == nums[mid]) {
      return mid
    }
    if (target > nums[mid]) {
      left = mid + 1
    } else {
      right = mid - 1
    }
  }
  return -1
}

console.log(binarySearch([1, 2, 3, 4, 5, 6, 8], 6))
