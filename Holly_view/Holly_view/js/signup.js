const show_pw_btn = document.querySelector('#show-password')
const show_pw_icon = show_pw_btn.querySelector('img')
const pw_input = document.querySelector('#txt_pass')

show_pw_btn.addEventListener('click', () => {
	pw_input.type = pw_input.type === 'password' 
		? 'text' 
		: 'password'

	show_pw_icon.src = show_pw_icon.src.includes('open') 
		? './img/eye_closed.svg' 
		: './img/eye_open.svg'
})

const coshow_pw_btn = document.querySelector('#show-copassword')
const coshow_pw_icon = coshow_pw_btn.querySelector('img')
const copw_input = document.querySelector('#txt_copassword')

coshow_pw_btn.addEventListener('click', () => {
	copw_input.type = copw_input.type === 'password' 
		? 'text' 
		: 'password'

	coshow_pw_icon.src = coshow_pw_icon.src.includes('open') 
		? './img/eye_closed.svg' 
		: './img/eye_open.svg'
})