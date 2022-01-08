const showHeaders = (headers)=>{
	const tableArr =headers;
	console.log(tableArr);
	const tableMain = document.getElementById("mainTable");
	let tableRowEle = '<tr class="header">';
	tableArr.forEach(tableRowEle =>{
		tableRowEle +=`<th class='${String(tableRow).toLowerCase()}'>`+String(tableRow)+'</th>';
	});
	tableRowEle += '</tr>';
	console.log(tableRowEle);
	tableMain.innerHTML = tableRowEle;
}

const showTableOnLoad =(data , check=true)=>{
	if(check)
		showHeaders(Object.keys(data[0]).map((headerString)=>headerString.toUpperCase()));
	const tableArr = data;
	const tableMain = document.getElementById("mainTable");
	tableArr.forEach(tableRow =>{
		let tableRowEle = '<tr>';
		object.entries(tableRow).forEach(entry => {
			const [key,value] = entry;
			tableRowEle += `<td class="${key}">`  + value + '</td>';
		});
		tableRowEle += '</tr>'
		tableMain.innerHTML += tableRowEle;
	});
}

const fetchTableData = ()=>{
	fetch('http://localhost:8080/H2HBABBA1305/TestServlet')
	.then(response => {
		return response.json()
	})
	.then(jsonResult => {
		showTableOnLoad(jsonResult)
	})
	.catch(error => {
		console.log(error)
	})
}

fetchTableData();


