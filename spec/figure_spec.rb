require 'spec_helper'

describe Figure do
  describe '::VERSION' do
    subject { Figure::VERSION }
    it { is_expected.not_to be nil }
  end

  describe '::filename_for' do
    subject { described_class.filename_for app_name }

    context 'when app name is "textmate"' do
      let(:app_name) { 'textmate' }
      it { is_expected.to eq('.tm_properties') }
    end

    context 'when app name is "foobar"' do
      let(:app_name) { 'foobar' }
      it { expect { subject }.to raise_error(Figure::Errors::UnknownApplication) }
    end
  end

  describe '::config_for' do
    subject { described_class.config_for filename }

    context 'when filename is ".tm_properties"' do
      let(:filename) { '.tm_properties' }
      it { is_expected.to match /^include/ }
      it { is_expected.to match /^exclude/ }
    end

    context 'when filename is "foobar"' do
      let(:filename) { 'foobar' }
      it { expect { subject }.to raise_error(Figure::Errors::UnknownFilename) }
    end
  end
end
