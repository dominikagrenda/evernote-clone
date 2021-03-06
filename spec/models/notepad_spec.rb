require 'rails_helper'

RSpec.describe Notepad, type: :model do
  let!(:long_title) { "Some notepad aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" }
  let!(:title) { "Some notepad" }
  let!(:subject_title) { "notepad123" }
  let!(:notepad) { Notepad.new(title: title).save }

  subject { Notepad.new(title: subject_title) }

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "should validate uniqueness of title" do
    subject.title = title
    expect(subject).to_not be_valid
  end

  it "should validate length of title" do
    subject.title = long_title
    expect(subject).to_not be_valid
  end

it "should have many notes" do
 t = Notepad.reflect_on_association(:notes)
   expect(t.macro).to eq :has_many
  end
end
