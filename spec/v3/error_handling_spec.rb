require 'spec_helper'

describe Travis::API::V3::ServiceIndex do

  describe "Test tea_pot_error" do
    let(:headers)   {{  }}
    before          { get("/v3/repo/1/brew/coffee", {}, headers) }

    it "handles TeaPotError" do
      expect(last_response.status).to be == 418
      expect(JSON.load(body)).to      be ==     {
        "@type"         => "error",
        "error_type"    => "tea_pot_error",
        "error_message" => "I\'m a teapot"
      }
    end
  end

end
