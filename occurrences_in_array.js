function deleteNth(arr,x){
  var newArray = []

  for (i=0, i<arr.length; i++;){
    if (newArray.includes(arr[i])){
      if (newArray.filter(function(value){
        return value == "a"}).length < x){
          newArray.push(arr[i])
        }
      }
    else {
    newArray.push(arr[i])
    }
  }
  return newArray
}
