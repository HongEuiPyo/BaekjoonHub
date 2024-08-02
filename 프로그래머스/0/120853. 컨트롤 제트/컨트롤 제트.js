function solution(s) {  
    s = s.split(' ');
    let result = [];
    for (let i of s){
        if (i === 'Z'){
            result.pop()
        } else {
            result.push(+i)
        }
    }
    return result.reduce((a,c) => a + c, 0)
}