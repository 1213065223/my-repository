class formRegExp {
	constructor(params, form) {
		this.params = params;
		this.emailRegExp = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
		this.phoneRegExp = /^1(3|4|5|6|7|8|9)\d{9}$/;
		this.RegExptype = params.RegExptype;
		this.message = params.message;
		this.trigger = params.trigger;
		this.id = params.id;
		this.formId = form;
		this.result = false;
		this.init();
	}
	init() {
		this.Event();
	}
	
	Event() {
		let Entity = document.getElementById(this.id);
		let vm = this;
		Entity.addEventListener(this.trigger, function() {
			if (this.value) {
				vm.RegExp(this.value, this)
			} else {
				vm.label_error(this);
			}
		})
	}
	onceEvent() {
		let Entiry = document.getElementById(this.id)
		if (Entiry.value) {
			this.RegExp(Entiry.value, Entiry)
		} else {
			this.label_error(Entiry);
			this.result = true;
		}
	}
	RegExp(value, vm) {
		if (this.RegExptype === 'string' || this.RegExptype === null || this.RegExptype === undefined) {
			this.label_succeed(vm);
			this.result = true;
		} else if (this.RegExptype === 'phone' && this.phoneRegExp.test(value)) {
			this.label_succeed(vm);
			this.result = true;
		} else if (this.RegExptype === 'email' && this.emailRegExp.test(value)) {
			this.label_succeed(vm);
			this.result = true;
		} else {
			this.label_error(vm);
			this.result = false;
		}

	}
	label_error(vm) {
		let brother = vm.parentNode.getElementsByTagName("span");
		if (!brother.length) {
			vm.style.borderColor = 'red';
			let span = document.createElement("span");
			span.innerText = this.message;
			span.setAttribute('class', 'form-message');
			vm.parentNode.appendChild(span);
		}
	}
	label_succeed(vm) {
		let brother = vm.parentNode.getElementsByTagName("span");
		if (brother.length) {
			vm.parentNode.removeChild(brother[0])
			vm.style.borderColor = '#dcdee2';
		}
	}
}
