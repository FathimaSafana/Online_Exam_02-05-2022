
<html>
<head>



  <script type="text/javascript">
    function checkInputs() {
		var fname = document.getElementById('fname');
		var lname = document.getElementById('lname');
		var uname = document.getElementById('uname');
		var email = document.getElementById('email');
		var pass = document.getElementById('pass');
		var contactno = document.getElementById('contactno');
		var city = document.getElementById('city');
		var address = document.getElementById('address');
		
		let f = 0;
		let l = 0;
		let u = 0;
		let e = 0;
		let p = 0;
		let c = 0;
		let i = 0;
		let a = 0;
		
		if (fname.value === '') {
			setErrorFor(fname, 'Please enter your firstname');
			f = 0;
		} else if (!isFirstname(fname.value)) {
			setErrorFor(fname, 'Firstname contains only alphabets');
			f = 0;
		} else {
			setSuccessFor(fname);
			f = 1;
		}
		if (lname.value === '') {
			setErrorFor(lname, 'Please enter your lastname');
			l = 0;
		} else if (!isLastname(lname.value)) {
			setErrorFor(lname, 'Lastname contains only alphabets');
			l = 0;
		} else {
			setSuccessFor(lname);
			l = 1;
		}
		if (uname.value === '') {
			setErrorFor(uname, 'Please enter the username');
			u = 0;
		} else if (!isUsername(uname.value)) {
			setErrorFor(uname,'Username contains small letters,numbers,underscore,dot only');
			u = 0;
		} else {
			setSuccessFor(uname);
			u = 1;
		}
		if (email.value === '') {
			setErrorFor(email, 'Please enter your email');
			e = 0;
		} else if (!isEmail(email.value)) {
			setErrorFor(email, 'Invalid email');
			e = 0;
		} else {
			setSuccessFor(email);
			e = 1;
		}
		if (pass.value === '') {
			setErrorFor(pass, 'Please enter the password');
			p = 0;
		} else if (!isPassword(pass.value)) {
			setErrorFor(pass,'Password should contain atleast 8 character,1 capital,small letter,number&special character');
			p = 0;
		} else {
			setSuccessFor(pass);
			p = 1;
		}
		
		if (contactno.value === '') {
			setErrorFor(contactno, 'Please enter your mobile no');
			c = 0;
		} else if (!isPhone(contactno.value)) {
			setErrorFor(contactno, 'Invalid mobile no');
			c = 0;
		} else {
			setSuccessFor(contactno);
			c = 1;
		}
		if (city.value === '') {
			setErrorFor(city, 'Please enter the city');
			i = 0;
		} else if (!isCityname(city.value)) {
			setErrorFor(city,'city contains alphabets only');
			i = 0;
		} else {
			setSuccessFor(city);
			i = 1;
		}
		
		if (address.value === '') {
			setErrorFor(address, 'Please enter the address');
			a = 0;
		} else if (!isAddress(address.value)) {
			setErrorFor(address,'address contains alphabets,numbers only');
			a = 0;
		} else {
			setSuccessFor(address);
			a = 1;
		}
		
		if (f == 1 && l == 1  && u == 1 && e == 1  && p == 1 && c == 1  && i == 1 && a == 1) {
			return true;
			
		} else
			return false;
	}
    function setErrorFor(input, message) {
		var formControl = input.parentElement;
		var small = formControl.querySelector('small');
		formControl.className = 'form-control error';
		small.innerText = message;
	}
	function setSuccessFor(input) {
		var formControl = input.parentElement;
		formControl.className = 'form-control success';
	}
	function isFirstname(firstname) {
		return /^[A-Za-z ]{3,20}$/.test(firstname);
	}
	function isLastname(lastname) {
		return /^[A-Za-z]{1,20}$/.test(lastname);
	}
	function isUsername(username) {
		return /^(?=[a-z0-9._]{3,20}$)(?![0-9])(?!.*[_.]{2})[^_.].*[^_.]$/.test(username);
	}
	
	function isEmail(email) {
		return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
		.test(email);
	}	
	function isPassword(password) {
		return /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-=]).{8,}$/.test(password);
	}	
	
	function isPhone(contactno) {
		return /^[6789]\d{9}$/.test(contactno);
	}
	function isCityname(city) {
		return /^(?=[a-z0-9._]{3,20}$)(?![0-9])(?!.*[_.]{2})[^_.].*[^_.]$/.test(city);
	}
	function isAddress(address) {
		return /^(?=[a-z0-9._]{3,20}$)(?![0-9])(?!.*[_.]{2})[^_.].*[^_.]$/.test(address);
	}
	
	</script>	
	</head>
		
  <body>
	
<form action="controller.jsp" onsubmit="return checkInputs()" >
    <input type="hidden" name="page" value="register"> 
				
				
								<div class="container">
			
					<div class="form-control">
					<label for="fname">FirstName</label><br>
					 <input style="width: 100%" type="text" placeholder="Enter Username" id="fname" name="fname" />
						<br> <small>Error message</small>
				</div>

					<div class="form-control">
					<label for="lname">LastName</label><br>
					 <input style="width: 100%" type="text" placeholder="Enter LastName"id="lname" name="lname" />
						<br> <small>Error message</small>
				</div>
					

					<div class="form-control">
					<label for="uname">UserName</label><br> 
					<input style="width: 100%" type="text" placeholder="Enter Username" id="uname" name="uname" />
						<br> <small>Error message</small>
				</div>
					<div class="form-control">
					<label for="email">Email</label><br>
					 <input style="width: 100%" type="text" placeholder="Enter Email" id="email" name="email" /><br>
						 <small>Error message</small>
				</div>
					<div class="form-control">
					<label for="pass">Password</label>
					<br> <input style="width: 95%" type="password" placeholder="Enter Password" id="pass" name="pass" maxlength="16"/>
						<span class="eye" onclick="myFunction()">
			<i id="hide1" class="fa fa-eye"></i>
			<i id="hide2" class="fa fa-eye-slash"></i>
			</span>
						<small>Error message</small>
				</div>
					<div class="form-control">
					<label for="contactno">Contact No</label><br>
					 <input style="width: 100%" type="text" placeholder="Enter Contact Number" id="contactno" name="contactno"  maxlength="10"/>
						<br> <small>Error message</small>
				</div>
						<div class="form-control">
					<label for="city">UserName</label><br> 
					<input style="width: 100%" type="text" placeholder="Enter City name" id="city" name="city" />
					<br> <small>Error message</small>
				</div>	
				
				<div class="form-control">
					<label for="address">Address</label><br> 
					<input style="width: 100%" type="text" placeholder="Enter Address" id="address" name="address" />
						<br> <small>Error message</small>
				</div>	
								<input type="submit" value="Register Now" name="controller">
								
					</div>		
				
			</form>
			<script type="text/javascript">
	function myFunction() {
		var x=document.getElementById("password");
		var y=document.getElementById("hide1");
		var z=document.getElementById("hide2");
		if(x.type==='password') {
			x.type="text";
			y.style.display="block";
			z.style.display="none";
		}
		else {
			x.type="password";
			y.style.display="none";
			z.style.display="block";
		}
	}
	</script>
		
</body>
</html>