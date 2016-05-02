
/*
 * GET home page.
 */
var mysql=require('mysql'),
    path=require('path');


exports.index = function(req, res){
  res.render('index', { title: 'Express' });
};

module.exports=function(app){	
	
app.get('/:any',function(req,res){
	res.sendfile(path.normalize(__dirname+'/../views/index.html')); 
});

var conn=mysql.createConnection({
	  host     : '127.0.0.1',
	  user     : 'root',
	  password : 'adiboy',
	  database : 'puxardb',
});

conn.connect(function(err){
if(err){throw err;}

console.log("Connected!");
});

app.post('/home',function(req,res){

var query='select * from products';

product=req.body.product;

if(product!=null && product!="" && product!="undefined")
	query+=' where PNAME="'+product+'"';

console.log(query);

conn.query(query,function(err,rows){
	if (err){throw err;}
	
	console.log(rows)
	res.contentType('json');
	res.send(rows);
});
});

app.post('/scanner',function(req,res){
	
	var code=req.body.code;
	console.log(code);
	
	if(code!=null || code!="" || code!="undefined") 
	var query='select * from products where PCODE='+code;
	else
    res.send(JSON.parse('{"PCODE" : " Sorry! Code Not Found."}'));
	
	console.log(query);
	conn.query(query,function(err,rows){
		
		if (err){throw err};
					
		res.contentType('json');
		res.send(rows);
	})
});
}