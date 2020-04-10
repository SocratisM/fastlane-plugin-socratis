describe Fastlane::Actions::SocratisAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The socratis plugin is working!")

      Fastlane::Actions::SocratisAction.run(nil)
    end
  end
end
