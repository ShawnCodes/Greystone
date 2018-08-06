require 'spec_helper'
require 'rest-client'

RSpec.describe 'Status requests' do
  describe 'GET /rolls' do
    it 'returns a status message' do
      RestClient.get('http://localhost:3000/api/v1/rolls') { |response, request, result, &block|
        expect(response.code).to eql(200)

      }      end
    end
  end

  RSpec.describe 'Status requests' do
    describe 'POST /rolls' do
      it 'returns a status message' do
        RestClient.get('http://localhost:3000/api/v1/rolls') { |response, request, result, &block|
          expect(response.code).to eql(200)

        }      end
      end
    end

    RSpec.describe 'Status requests' do
      describe 'GET /expenses' do
        it 'returns a status message' do
          RestClient.get('http://localhost:3000/api/v1/expenses') { |response, request, result, &block|
            expect(response.code).to eql(200)

          }      end
        end
      end

      RSpec.describe 'Status requests' do
        describe 'POST /expenses' do
          it 'returns a status message' do
            RestClient.get('http://localhost:3000/api/v1/expenses') { |response, request, result, &block|
              expect(response.code).to eql(200)

            }      end
          end
        end

        RSpec.describe 'Status requests' do
          describe 'GET /capitalizations' do
            it 'returns a status message' do
              RestClient.get('http://localhost:3000/api/v1/capitalizations') { |response, request, result, &block|
                expect(response.code).to eql(200)

              }      end
            end
          end

          RSpec.describe 'Status requests' do
            describe 'POST /capitalizations' do
              it 'returns a status message' do
                RestClient.get('http://localhost:3000/api/v1/capitalizations') { |response, request, result, &block|
                  expect(response.code).to eql(200)

                }      end
              end
            end

            RSpec.describe 'Status requests' do
              describe 'GET /users' do
                it 'returns a status message' do
                  RestClient.get('http://localhost:3000/api/v1/users') { |response, request, result, &block|
                    expect(response.code).to eql(200)

                  }      end
                end
              end

              RSpec.describe 'Status requests' do
                describe 'POST /users' do
                  it 'returns a status message' do
                    RestClient.get('http://localhost:3000/api/v1/users') { |response, request, result, &block|
                      expect(response.code).to eql(200)

                    }      end
                  end
                end

                RSpec.describe 'Status requests' do
                  describe 'GET /solutions' do
                    it 'returns a status message' do
                      RestClient.get('http://localhost:3000/api/v1/solutions') { |response, request, result, &block|
                        expect(response.code).to eql(204)

                      }      end
                    end
                  end
