# frozen_string_literal: true

require "rails_helper"

describe Types::UserType do
  types = GraphQL::Define::TypeDefiner.instance

  it "has a :todo_lists that returns a ToDoList type" do
    expect(subject).to have_field(:id).that_returns(!types.ID)
  end

  it "has a :created_at field of String type" do
    expect(subject).to have_field(:created_at).that_returns(types.String)
  end

  it "has a sound types" do
    expect(subject).to have_field(:sounds).that_returns(types[Types::SoundType])
  end
end