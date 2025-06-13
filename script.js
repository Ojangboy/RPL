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
});
