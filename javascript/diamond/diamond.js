var Diamond = function(){};

Diamond.prototype.makeDiamond = function(letter){
	function makeLine(charcode,width){
        let center = charcode === 65 ? 'A' : String.fromCharCode(charcode) + " ".repeat((charcode-65)*2-1) + String.fromCharCode(charcode);
        return " ".repeat((width-center.length)/2) + center + " ".repeat((width-center.length)/2);
    }
	
    let char = letter.charCodeAt(0);
    let width = (char-65)*2 + 1;
    let result = [];
    
    for(let i = 0; i<width; i++){
        if (i<(width+1)/2) {
            result.push(makeLine(65+i,width));
        } else {
            result.push(makeLine(65+width-i-1, width));
        }
    }
    return result.join("\n")+"\n";
}

module.exports = Diamond;