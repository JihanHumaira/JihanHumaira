Given('I am on the homepage') do
    visit("https://www.bukalapak.com/")
  end
  
  When('I click Sign In') do
    click_on "Login"
    expect(find('div.wrapper-input-identity').text).to eql("Nomor handphone atau email\nMisal: 081234567890, atau nama@email.com")
    
  end
  
  When('I fill my credential') do
    fill_in 'LoginID', with: 'sqajihanhumaira@gmail.com'
    find('#submit_button').click
    
    fill_in 'Password', with: 'Bukalapak30'
    find('#btn-login').click
    find('#create-pin-btn-secondary').click

    
  end
  
  Then('I should be logged in') do
    expect(find('div.sigil-header__main-nav-bar').text).to eql("Kategori\nProduk virtual")
  end

  #WRONG EMAIL
 
  When('I fill wrong email') do
    fill_in 'LoginID', with: 'sqajihanhumaira@tes.com'
    find('#submit_button').click
   
    fill_in 'Password', with: 'Bukalapak30'
    find('#btn-login').click
   
   
  end
   Then('I should be not logged in') do
    expect(find('p.mv-48.text-masukan-password.transition__basic.nol-opacity.bl-text.bl-text--subheading-1.bl-text--center.bl-text--semi-bold.animation__fade-in').text).to eql("Masukkan Password")
   
  end
  
  And('I should see the error message') do
    expect(find('div.bl-text-field__message').text).to eql("E-mail atau password yang kamu masukkan salah. Silakan coba lagi.")
  end
 
 