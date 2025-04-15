# Github prepare commit message

Git 커밋 시, 현재 브랜치 이름에 포함된 JIRA issue ID를 자동으로 커밋 메시지에 추가합니다.

## Example

👉🏼 branch name containing issue ID

```text
Branch name:
- feature/ABCDEFG-12345
- hotfix/ABCDEFG-12345test
- test/ABCDEFG-12345
- test/ABCDEFG-12345-test
- test/ABCDEFG-12345test
- ABCDEFG-12345

Commit Message:
feat: xxx

Result:
[ABCDEFG-12345] feat: xxx
```

👉🏼 branch name not containing issue ID
- JIRA issue ID는 아래 정규식으로 추출되므로, issue ID로 오인될 수 있는 유사 패턴은 가급적 소문자 사용을 권장합니다. 
- `'[A-Z]+-[0-9]+'`

```text
Branch name:
- boot3
- test-1234
- dev-1234
- beta-1234

Commit Message:
feat: xxx

Result:
feat: xxx
```

## How to use

1. 레파지토리 목록이 있는 디렉토리로 이동합니다.

    ```shell
    $ cd yout-path/repository
   
   project1
   project2
   project3
   ...
   projectN
   ```

2. `prepare-commit-msg`를 적용합니다.

   ```shell
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jihunparkme/github-prepare-commit-message/refs/heads/main/script/run-create-prepare-commit-msg.sh)"
   ```

   ```shell
   # clone repository
   Cloning into 'github-prepare-commit-message'...
   ...
   
   # copy prepare-commit-msg hook to target repository
   repository: /Users/project/project1
   repository: /Users/project/project2
   ...
   repository: /Users/project/projectN
   ```

3. JIRA ISSUE ID가 포함된 브랜치로 커밋을 합니다.

---

⚠️ **레파지토리에 추가된 prepare-commit-msg 삭제할 경우**

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jihunparkme/github-prepare-commit-message/refs/heads/main/script/delete-prepare-commit-msg.sh)"
```



