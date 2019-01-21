require_relative '../lib/event'

  describe Event do
    [ :start_date, :time, :title, :email ].each do |attribute|
      it { should respond_to attribute }
    end
  end