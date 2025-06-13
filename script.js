document.addEventListener('DOMContentLoaded', () => {
    const loginOverlay = document.getElementById('modalOverlay');
    const registerOverlay = document.getElementById('registerOverlay');

    const closeLoginBtn = document.getElementById('closeButton');
    const closeRegisterBtn = document.getElementById('closeRegister');

    const openRegisterLink = document.getElementById('openRegister');
    const backToLoginLink = document.getElementById('backToLogin');

    const visitorLoginBtn = document.querySelector('#loginModal .visitor-btn');
    const umkmLoginBtn = document.querySelector('#loginModal .umkm-btn');

    // Close login modal
    closeLoginBtn.addEventListener('click', () => {
        loginOverlay.style.display = 'none';
    });

    // Close register modal
    closeRegisterBtn.addEventListener('click', () => {
        registerOverlay.style.display = 'none';
    });

    // Open register modal and hide login modal
    openRegisterLink.addEventListener('click', (e) => {
        e.preventDefault();
        loginOverlay.style.display = 'none';
        registerOverlay.style.display = 'flex';
    });

    // Back to login modal from register modal
    backToLoginLink.addEventListener('click', (e) => {
        e.preventDefault();
        registerOverlay.style.display = 'none';
        loginOverlay.style.display = 'flex';
    });

    // Redirect visitor login button to login page
    visitorLoginBtn.addEventListener('click', () => {
        window.location.href = 'login.html';
    });

    // Redirect UMKM login button to login page
    umkmLoginBtn.addEventListener('click', () => {
        window.location.href = 'login.html';
    });

    // Handle send OTP button click
    const sendOtpBtn = document.getElementById('sendOtpBtn');
    const phoneInput = document.getElementById('phoneInput');

    sendOtpBtn.addEventListener('click', () => {
        let phoneNumber = phoneInput.value.trim();
        if (!phoneNumber) {
            alert('Mohon masukkan nomor handphone.');
            return;
        }
        // Remove non-digit characters
        phoneNumber = phoneNumber.replace(/\D/g, '');

        // Add country code if not present (assuming Indonesia +62)
        if (phoneNumber.startsWith('0')) {
            phoneNumber = '62' + phoneNumber.substring(1);
        } else if (!phoneNumber.startsWith('62')) {
            phoneNumber = '62' + phoneNumber;
        }

        // Generate 6-digit OTP code
        const otpCode = Math.floor(100000 + Math.random() * 900000);

        const message = encodeURIComponent(`Kode OTP Anda adalah: ${otpCode}`);
        const whatsappUrl = `https://wa.me/${phoneNumber}?text=${message}`;
        window.open(whatsappUrl, '_blank');
    });
});
