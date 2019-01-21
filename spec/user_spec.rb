require_relative '../lib/user'

describe User do

  before(:each) do
  	# ligne trouvée ici : https://geminstallthat.wordpress.com/2008/08/11/reloading-classes-in-rspec/
  	# qui permet de remettre à zéro la classe. Pratique pour la méthode count, mais pas obligatoire.
    Object.send(:remove_const, 'User')
    load 'user.rb'
  end

	describe 'initializer' do

		it 'creates an user' do
      user = User.new("email@email.com")
      expect(user.class).to eq(User)
		end

		it 'saves @email as instance variable' do
			date = "email@email.com"
			user = User.new(email)
			expect(user.email).to eq(email)
    end
    
  end
end